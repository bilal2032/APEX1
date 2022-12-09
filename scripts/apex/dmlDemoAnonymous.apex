DMLDemo.dmlInsertDemo_stnobj();
DMLDemo.dmlInsertDemo_cstObj ();
DMLDemo.dmlUpdateDemo_1();
DMLDemo.dmlUpdateDemo_2();
DMLDemo.dmlUpdateDemo_3();
DMLDemo.dmlInsertDemo_4();
DMLDemo.dmlUpdateDemo_5();
DMLDemo.dmlMultipleRecordInsert_right();
DMLDemo.dmlMultipleRecordInsert_right2();
DMLDemo.dmlMultipleRecordUpdate_right();

list<account> listAccount = [Select id from account where createddate = THIS_WEEK];
delete listAccount;