import mysql.connector

def first_query(cursor, group,violation):
    cursor.execute("select concat(person.surname,' ',person.name,' ',person.patronymic) as full_name from groups join student_group on groups.group_id = student_group.group_id "
                   "join student on student.student_id = student_group.student_id join person on person.person_id = student.person_id"
                   " join violation on person.person_id = violation.person_id join sviolation_kind on violation.violation_kind_id = sviolation_kind.violation_kind_id"
                   " where violation_kind_name = '{0}' and group_code = '{1}'".format(violation,group))
    student_list = cursor.fetchall()
    return student_list

def second_query(cursor, speciality):
    cursor.execute("select group_alias from (select sum(mark_name)/count(student.student_id) as avg, groups.group_code as group_alias from person "
                   "join student on person.person_id = student.person_id join student_group on student.student_id = student_group.student_id "
                   "join groups on groups.group_id = student_group.group_id join speciality on speciality.speciality_id = groups.speciality_id "
                   "join student_marks on student_marks.student_id = student.student_id join smark on smark.mark_id = student_marks.mark_id "
                   "where speciality.speciality_name = '{0}' group by groups.group_id)tt where tt.avg = (select max(avg) "
                   "from (select sum(mark_name)/count(student.student_id) as avg, groups.group_code as group_alias from person "
                   "join student on person.person_id = student.person_id join student_group on student.student_id = student_group.student_id "
                   "join groups on groups.group_id = student_group.group_id join speciality on speciality.speciality_id = groups.speciality_id "
                   "join student_marks on student_marks.student_id = student.student_id join smark on smark.mark_id = student_marks.mark_id "
                   "where speciality.speciality_name = '{0}' group by groups.group_id) t2)".format(speciality))
    max_avg_point_group = cursor.fetchall()
    return max_avg_point_group

def third_query(cursor, mark_lower_border,speciality):
    cursor.execute("select concat(person.surname,' ',person.name,' ',person.patronymic) as full_name from person join student on person.person_id = student.person_id "
                   "join student_group on student.student_id = student_group.student_id join groups on groups.group_id = student_group.group_id "
                   "join speciality on speciality.speciality_id = groups.speciality_id join student_marks on student_marks.student_id = student.student_id "
                   "join smark on smark.mark_id = student_marks.mark_id where (smark.mark_name > {0}) "
                   "and (speciality.speciality_name = '{1}');".format(mark_lower_border,speciality))
    student_list = cursor.fetchall()
    return student_list

def fourth_query(cursor, punish_kind,contract_kind):
    cursor.execute("select concat(person.surname,' ',person.name,' ',person.patronymic) as full_name from person join violation on person.person_id = violation.person_id"
                   " join spunish_kind on spunish_kind.punish_kind_id = violation.punish_kind_id join student on student.person_id = person.person_id"
                   " join contract on contract.student_id = student.student_id join scontract_kind on scontract_kind.contract_kind_id = contract.contract_kind_id"
                   " where spunish_kind.punish_kind_name = '{0}' and scontract_kind.contract_kind_name = '{1}'".format(punish_kind,contract_kind))
    student_list = cursor.fetchall()
    return student_list

def insert_row_into_table (cursor, table_name, row_of_data):
    cursor.execute("INSERT INTO {0} VALUES {1}".format(table_name,row_of_data))

def delete_row_from_table (cursor, table_name, primary_key_name, primary_key_id):
    cursor.execute("DELETE FROM {0} WHERE {1} = '{2}'".format(table_name,primary_key_name,primary_key_id))

def show_all_table (cursor, table_name):
    cursor.execute("SELECT * FROM {0}".format(table_name))
    table_list = cursor.fetchall()

    return table_list

def update_row_in_table_by_primary_key(cursor,table_name,row_of_data,prim_key_name,prim_key_value):
    cursor.execute("UPDATE {0} SET {1} where {2} = {3}".format(table_name,row_of_data,prim_key_name,prim_key_value))

# cist_db = mysql.connector.connect(user='root', password='root_1234',host='34.77.196.83',database='Cist')
# cursor = cist_db.cursor()
# cursor.execute("show tables")
# print(cursor.fetchall())
# update_row_in_table_by_primary_key(cursor,"sviolation_kind", "violation_kind_name = 'Некорректна поведінка'", "violation_kind_id","8")
# #print(show_all_table (cursor, "sviolation_kind"))
# #insert_row_into_table(cursor, "smark","(70,14)")
#
#
#
#
#
#
#
#
# print("bye")
# cist_db.commit()
# cist_db.close()