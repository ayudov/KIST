from flask import Flask, render_template
import mysql.connector
from flask_socketio import SocketIO
from flask import request, redirect

req_num = 0
first_arg = ''
second_arg = ''

#gcloud sql connect cist --user=root
def first_query(cursor, group, violation):
   cursor.execute(
       # 'SELECT Group_code FROM andreysdb.GROUPS;'
      """select concat(PERSON.Surname,' ',PERSON.Name,' ',PERSON.Patronymic) as full_name from GROUPS join STUDENT_GROUP 
      on GROUPS.Group_ID = STUDENT_GROUP.Group_ID join STUDENT on STUDENT.Student_ID = STUDENT_GROUP.Student_ID join PERSON 
      on PERSON.Person_ID = STUDENT.Person_ID join VIOLATION on PERSON.Person_ID = VIOLATION.Person_ID join SVIOLATION_KIND 
      on VIOLATION.Violation_kind_ID = SVIOLATION_KIND.Violation_kind_ID where Violation_kind_name = '{0}' and Group_code = '{1}'""".format(str(violation), str(group))
   )
   student_list = cursor.fetchall()
   return student_list



def second_query(cursor, speciality):
   cursor.execute(
       """select group_alias from (select sum(Mark_name)/count(STUDENT.Student_ID) as avg, GROUPS.Group_code as group_alias from PERSON
join STUDENT on PERSON.Person_ID = STUDENT.Person_ID join STUDENT_GROUP on STUDENT.Student_ID = STUDENT_GROUP.Student_ID
join GROUPS on GROUPS.Group_ID = STUDENT_GROUP.Group_ID join SPECIALITY on SPECIALITY.Speciality_ID = GROUPS.Speciality_ID
join STUDENT_MARKS on STUDENT_MARKS.Student_ID = STUDENT.Student_ID join SMARK on SMARK.Mark_ID = STUDENT_MARKS.Mark_ID
where SPECIALITY.Speciality_name = '{0}' group by GROUPS.Group_id)tt where tt.avg = (select max(avg)
from (select sum(Mark_name)/count(STUDENT.Student_id) as avg, GROUPS.Group_code as group_alias from PERSON
join STUDENT on PERSON.Person_ID = STUDENT.Person_ID join STUDENT_GROUP on STUDENT.Student_ID = STUDENT_GROUP.Student_ID
join GROUPS on GROUPS.Group_ID = STUDENT_GROUP.Group_ID join SPECIALITY on SPECIALITY.Speciality_ID = GROUPS.Speciality_ID
join STUDENT_MARKS on STUDENT_MARKS.Student_ID = STUDENT.Student_ID join SMARK on SMARK.Mark_ID = STUDENT_MARKS.Mark_ID
where SPECIALITY.Speciality_name = '{1}' group by GROUPS.Group_ID) t2)""".format(speciality, speciality))
   max_avg_point_group = cursor.fetchall()
   return max_avg_point_group


def third_query(cursor, mark_lower_border, speciality):
   cursor.execute(
      """select concat(PERSON.Surname,' ',PERSON.Name,' ',PERSON.Patronymic) as full_name from PERSON join STUDENT on PERSON.Person_id = STUDENT.Person_id
join STUDENT_GROUP on STUDENT.Student_ID = STUDENT_GROUP.Student_ID join GROUPS on GROUPS.Group_ID = STUDENT_GROUP.Group_ID
join SPECIALITY on SPECIALITY.Speciality_ID = GROUPS.Speciality_ID join STUDENT_MARKS on STUDENT_MARKS.Student_ID = STUDENT.Student_ID
join SMARK on SMARK.Mark_ID = STUDENT_MARKS.Mark_ID where (SMARK.Mark_name = '{0}') 
and (SPECIALITY.Speciality_name = '{1}');""".format(mark_lower_border, speciality))
   student_list = cursor.fetchall()
   return student_list


def fourth_query(cursor, punish_kind, contract_kind):
   cursor.execute(
      "select concat(person.surname,' ',person.name,' ',person.patronymic) as full_name from person join violation on person.person_id = violation.person_id"
      " join spunish_kind on spunish_kind.punish_kind_id = violation.punish_kind_id join student on student.person_id = person.person_id"
      " join contract on contract.student_id = student.student_id join sc   ontract_kind on scontract_kind.contract_kind_id = contract.contract_kind_id"
      " where spunish_kind.punish_kind_name = '{0}' and scontract_kind.contract_kind_name = '{1}'".format(punish_kind,
                                                                                                          contract_kind))
   student_list = cursor.fetchall()
   return student_list



app = Flask(__name__)
app.config['SECRET_KEY'] = 'vnkdjnfjknfl1232#'
socketio = SocketIO(app)

mydatabase = mysql.connector.connect(
    # host = '34.77.196.83', user = 'root',
    # passwd = 'root_1234', database = 'Cist')
    host = 'mydbinstance.czrbnn03wbop.eu-west-3.rds.amazonaws.com', user = 'ayudov',
    passwd = '61206120', database = 'andreysdb')


mycursor = mydatabase.cursor()

#There you can add home page and others. It is completely depends on you
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/index1',methods=['GET', 'POST'])
def index1():
    if (request.method == 'POST'):
        req = request.form
        #print(req[0])
        print(request.form.get('comp_select'))
        req_comp = request.form.get('comp_select')
        req1 = [request.form.get('group_select1'),request.form.get('violation_select1')]
        req2 = request.form.get('speciality_select2')
        req3 = [request.form.get('speciality_select3'),request.form.get('mark_select3')]
        req4 = [request.form.get('contract_select4'),request.form.get('punish_select4')]

        if req_comp=='1.Вибрати всіх студентів із вказаної групи, які здійснили вказане порушення':
                select = int(request.form.get('comp_select')[0])

                data = []
                mycursor.execute('SELECT group_code FROM GROUPS')
                data.append(mycursor.fetchall())
                mycursor.execute('SELECT violation_kind_name FROM SVIOLATION_KIND')
                data.append(mycursor.fetchall())

                #data = mycursor.fetchall()
                print(data)
                return render_template("request.html",output_data = [select,"1.Вибрати всіх студентів із вказаної групи, які здійснили вказане порушення","Група:","Порушення:"],data = data)

        elif req_comp == '2.Вибрати групу з найбільшим середнім балом на вказаній спеціальності':
            select = int(request.form.get('comp_select')[0])

            data = []
            mycursor.execute('SELECT speciality_name FROM SPECIALITY')
            data.append(mycursor.fetchall())
            # mycursor.execute('SELECT violation_kind_name FROM sviolation_kind')
            # data.append(mycursor.fetchall())

            # data = mycursor.fetchall()
            print(data)
            return render_template("request.html", output_data=[select,
                                                                "2.Вибрати групу з найбільшим середнім балом на вказаній спеціальності",
                                                                "Спеціальність:"], data=data)


        elif req_comp=='3.Вибрати студентів вказаної спеціальності, середній бал яких рівний вказанному':
                select = int(request.form.get('comp_select')[0])

                data = []
                mycursor.execute('SELECT Speciality_name FROM SPECIALITY')
                data.append(mycursor.fetchall())
                mycursor.execute('SELECT Mark_name FROM SMARK')
                data.append(mycursor.fetchall())

                #data = mycursor.fetchall()
                print(data)
                return render_template("request.html",output_data = [select,"3.Вибрати студентів вказаної спеціальності, середній бал яких рівний вказанному","Спеціальність:","Оцінка:"],data = data)

        elif req_comp=='4.Вибрати студентів вказаного контрактного типу, які отримували вказане покарання':
                select = int(request.form.get('comp_select')[0])

                data = []
                mycursor.execute('SELECT contract_kind_name FROM scontract_kind')
                data.append(mycursor.fetchall())
                mycursor.execute('SELECT punish_kind_name FROM spunish_kind')
                data.append(mycursor.fetchall())

                #data = mycursor.fetchall()
                print(data)
                return render_template("request.html",output_data = [select,"4.Вибрати студентів вказаного контрактного типу, які отримували вказане покарання","Тип контракту:","Порушення:"],data = data)


        elif (type(req1[0])!= type(None)) & (type(req1[1])!=type(None)): #(request.form.get('group_select1')!=None)& (request.form.get('violation_select1')!=None):
                #select = int(request.form.get('comp_select')[0])

                data = []
                mycursor.execute('SELECT group_code FROM GROUPS')
                data.append(mycursor.fetchall())
                mycursor.execute('SELECT violation_kind_name FROM SVIOLATION_KIND')
                data.append(mycursor.fetchall())
                #answer_list = [["Відповідь буде тут"]]
                print(request.form.get("group_select1"))
                print(request.form.get("violation_select1"))
                try:
                    answer_list = first_query(mycursor, request.form.get("group_select1"),request.form.get("violation_select1"))#request.form.get("group_select1"), request.form.get("violation_select1"))
                except:
                    pass
                # answer_list = [[]]
                if len(answer_list) == 0:
                    answer_list = [["Порожня множина"]]
                data.append(answer_list)
                # print(data)


                return render_template("request.html", output_data=[1,
                                                                    "1.Вибрати всіх студентів із вказаної групи, які здійснили вказане порушення",
                                                                    "Група:", "Порушення:"], data=data)


        elif (type(req2)!= type(None)): #(request.form.get('group_select1')!=None)& (request.form.get('violation_select1')!=None):
                #select = int(request.form.get('comp_select')[0])

                data = []
                mycursor.execute('SELECT Speciality_name FROM SPECIALITY')
                data.append(mycursor.fetchall())

                #answer_list = [["Відповідь буде тут"]]
                try:
                    answer_list = second_query(mycursor, request.form.get("speciality_select2"))#request.form.get("group_select1"), request.form.get("violation_select1"))

                except:
                    pass
                if len(answer_list) == 0:
                    answer_list = [["Порожня множина"]]
                data.append(answer_list)
                print(data)


                return render_template("request.html", output_data=[2,
                                                                    "2.Вибрати групу з найбільшим середнім балом на вказаній спеціальності",
                                                                    "Спеціальність:",], data=data)

        elif (type(req3[0])!= type(None)) & (type(req3[1])!=type(None)): #(request.form.get('group_select1')!=None)& (request.form.get('violation_select1')!=None):
                #select = int(request.form.get('comp_select')[0])

                data = []
                mycursor.execute('SELECT Speciality_name FROM SPECIALITY')
                data.append(mycursor.fetchall())
                mycursor.execute('SELECT Mark_name FROM SMARK')
                data.append(mycursor.fetchall())
                #answer_list = [["Відповідь буде тут"]]
                print(request.form.get("speciality_select3"))
                print(request.form.get("mark_select3"))
                try:
                    answer_list = third_query(mycursor, request.form.get("mark_select3"),request.form.get("speciality_select3"))#request.form.get("group_select1"), request.form.get("violation_select1"))

                except:
                    pass
                if len(answer_list) == 0:
                    answer_list = [["Порожня множина"]]
                data.append(answer_list)
                print(data)


                return render_template("request.html", output_data=[3,
                                                                    "3.Вибрати студентів вказаної спеціальності, середній бал яких рівний вказанному",
                                                                    "Спеціальність:", "Оцінка:"], data=data)

        elif (type(req4[0])!= type(None)) & (type(req4[1])!=type(None)): #(request.form.get('group_select1')!=None)& (request.form.get('violation_select1')!=None):
                #select = int(request.form.get('comp_select')[0])

                data = []
                mycursor.execute('SELECT contract_kind_name FROM scontract_kind')
                data.append(mycursor.fetchall())
                mycursor.execute('SELECT punish_kind_name FROM spunish_kind')
                data.append(mycursor.fetchall())
                #answer_list = [["Відповідь буде тут"]]

                try:
                    answer_list = fourth_query(mycursor, request.form.get("punish_select4"),request.form.get("contract_select4"))#request.form.get("group_select1"), request.form.get("violation_select1"))

                except:
                    pass
                if len(answer_list) == 0:
                    answer_list = [["Порожня множина"]]
                data.append(answer_list)
                print(data)


                return render_template("request.html", output_data=[4,
                                                                    "4.Вибрати студентів вказаного контрактного типу, які отримували вказане покарання","Тип контракту:","Порушення:"], data=data)


    else:
        return render_template('index1.html',data=[{'name':'1.Вибрати всіх студентів із вказаної групи, які здійснили вказане порушення'},
                                               {'name':'2.Вибрати групу з найбільшим середнім балом на вказаній спеціальності'},
                                               {'name':'3.Вибрати студентів вказаної спеціальності, середній бал яких рівний вказанному'}])
                                               # {'name':'4.Вибрати студентів вказаного контрактного типу, які отримували вказане покарання'}])


@app.route('/cafedra')
def cafedra():
   mycursor.execute('SELECT `Cafedra_ID`,`Cafedra_name`,`Cafedra_shifr` FROM CAFEDRA')
   data = mycursor.fetchall()
   return render_template('cafedra.html', output_data = data)

@app.route('/groups')
def groups():
   mycursor.execute('SELECT `Group_ID`,`Speciality_ID`, `Group_code`, `Group_create_date` FROM GROUPS')
   data = mycursor.fetchall()
   return render_template('groups.html', output_data = data)

@app.route('/orders')
def orders():
   mycursor.execute('SELECT `Order_ID`,`Order_kind_ID`, `Order_date`, `Order_no`, `Order_text` FROM ORDERS')
   data = mycursor.fetchall()
   return render_template('orders.html', output_data = data)

@app.route('/person')
def person():
   mycursor.execute('SELECT `Person_ID`,`surname`,`name`,`patronymic`,`birth_date`,`sex`,`birth_place`,`address`,`telephone` FROM PERSON')
   data = mycursor.fetchall()
   return render_template('person.html', output_data = data)

@app.route('/semester')
def semester():
   mycursor.execute('SELECT `Semester_ID`, `Teach_begin_date`, `Teach_end_date`, `Session_begin_date`, `Session_end_date`, `Attest1_date`, `Attest2_date` FROM SEMESTER')
   data = mycursor.fetchall()
   return render_template('semester.html', output_data = data)


@app.route('/smark')
def smark():
   mycursor.execute('SELECT `Mark_ID`, `Mark_name` FROM SMARK')
   data = mycursor.fetchall()
   return render_template('smark.html', output_data = data)

@app.route('/sorder_kind')
def sorder_kind():
   mycursor.execute('SELECT `Order_kind_ID`, `Order_kind_name` FROM SORDER_KIND')
   data = mycursor.fetchall()
   return render_template('sorder_kind.html', output_data = data)

@app.route('/speciality')
def speciality():
   mycursor.execute('SELECT `Speciality_ID`, `Cafedra_ID`, `Speciality_name`, `Speciality_shifr` FROM SPECIALITY')
   data = mycursor.fetchall()
   return render_template('speciality.html', output_data = data)


@app.route('/stest_kind')
def stest_kind():
   mycursor.execute('SELECT `Test_kind_ID`, `Test_kind_name` FROM STEST_KIND')
   data = mycursor.fetchall()
   return render_template('stest_kind.html', output_data = data)

@app.route('/student')
def student():
   mycursor.execute('SELECT `Student_ID` ,`book_no`, `note` FROM STUDENT')
   data = mycursor.fetchall()
   return render_template('student.html', output_data = data)

@app.route('/student_group')
def student_group():
   mycursor.execute('SELECT `Group_ID`, `Student_ID`, `Puting_date` FROM STUDENT_GROUP')
   data = mycursor.fetchall()
   return render_template('student_group.html', output_data = data)

@app.route('/student_marks')
def student_marks():
   mycursor.execute('SELECT `Student_ID`, `Teach_plan_ID`, `Mark_ID` FROM STUDENT_MARKS')
   data = mycursor.fetchall()
   return render_template('student_marks.html', output_data = data)

@app.route('/subject')
def subject():
   mycursor.execute('SELECT `Subject_ID`, `Subject_name`, `Subject_shifr` FROM SUBJECT')
   data = mycursor.fetchall()
   return render_template('subject.html', output_data = data)

@app.route('/sviolation_kind')
def sviolation_kind():
   mycursor.execute('SELECT `violation_kind_ID`, `violation_kind_name` FROM SVIOLATION_KIND')
   data = mycursor.fetchall()
   return render_template('sviolation_kind.html', output_data = data)

@app.route('/teach_plan')
def teach_plan():
   mycursor.execute('SELECT `Teach_plan_ID`, `Semester_ID`, `Group_ID`, `Subject_ID`, `Tester_ID`, `Test_kind_ID`, `Test_date`, `Is_obligatory` FROM TEACH_PLAN')
   data = mycursor.fetchall()
   return render_template('teach_plan.html', output_data = data)


@app.route('/violation')
def violation():
   mycursor.execute('SELECT `Violation_ID`, `Violation_kind_ID`, `Violation_date`, `Person_ID`, `Order_ID` FROM VIOLATION')
   data = mycursor.fetchall()
   return render_template('violation.html', output_data = data)


@app.route("/request1", methods=["GET", "POST"])
def request1():

    answer_list = [["Відповідь буде тут"]]
    if request.method == "POST":

        req = request.form
        # print(req)
        # print(request.form.get("group"))
        # print(request.form.get("violation"))
        #print(first_query(mycursor,request.form.get("group"),request.form.get("violation"))[0][0])
        try:
         answer_list = first_query(mycursor,request.form.get("group"),request.form.get("violation"))
        except:
           pass
        if len(answer_list)!=0:
         return render_template("request1.html",output_data = answer_list)
        else:
           answer_list = [["Немає таких студентів"]]
           return render_template("request1.html", output_data=answer_list)

    return render_template("request1.html",output_data = answer_list)

@app.route("/request2", methods=["GET", "POST"])
def request2():

    answer_list = [["Відповідь буде тут"]]
    if request.method == "POST":

        req = request.form
        #print(first_query(mycursor,request.form.get("group"),request.form.get("violation"))[0][0])
        try:
         answer_list = second_query(mycursor,request.form.get("speciality"))
        except:
           pass
        if len(answer_list)!=0:
         return render_template("request2.html",output_data = answer_list)
        else:
           answer_list = [["Немає такої спеціальності aбо немає груп"]]
           return render_template("request2.html", output_data=answer_list)

    return render_template("request2.html",output_data = answer_list)

@app.route("/request3", methods=["GET", "POST"])
def request3():

    answer_list = [["Відповідь буде тут"]]
    if request.method == "POST":

        req = request.form
        # print(req)
        # print(request.form.get("speciality"))
        # print(request.form.get("mark"))
        #print(first_query(mycursor,request.form.get("group"),request.form.get("violation"))[0][0])
        #print(request.form.get("speciality"))
        try:
         answer_list = third_query(mycursor,request.form.get("mark"),request.form.get("speciality"))
        except:
           pass
        if len(answer_list)!=0:
         return render_template("request3.html",output_data = answer_list)
        else:
           answer_list = [["Немає таких студентів"]]
           return render_template("request3.html", output_data=answer_list)

    return render_template("request3.html",output_data = answer_list)


@app.route("/request4", methods=["GET", "POST"])
def request4():

    answer_list = [["Відповідь буде тут"]]
    if request.method == "POST":

        req = request.form
        # print(req)
        # print(request.form.get("contract"))
        # print(request.form.get("punish"))
        #print(first_query(mycursor,request.form.get("group"),request.form.get("violation"))[0][0])
        try:
         answer_list = fourth_query(mycursor,request.form.get("punish"),request.form.get("contract"))
        except:
           pass
        if len(answer_list)!=0:
         return render_template("request4.html",output_data = answer_list)
        else:
           answer_list = [["Немає таких студентів"]]
           return render_template("request4.html", output_data=answer_list)

    return render_template("request4.html",output_data = answer_list)




def messageReceived(methods=['GET', 'POST']):
    print('message was received!!!')

@socketio.on('my event')
def handle_my_custom_event(json, methods=['GET', 'POST']):
    print('received my event: ' + str(json))
    socketio.emit('my response', json, callback=messageReceived)

if __name__ == '__main__':
    socketio.run(app)
