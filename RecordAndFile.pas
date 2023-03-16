Program RecordAndFile;

type
  StudentRecord = record
    Name: string;
    Age: integer;
    GPA: real;
  end;

var
  StudentFile: file of StudentRecord;
  StudentData: StudentRecord;
  StudentName: string;
  StudentAge: integer;
  StudentGPA: real;

procedure WriteStudentDataToFile();
begin
  Assign(StudentFile, 'students.dat');
  Rewrite(StudentFile);

  writeln('Enter student data (name, age, GPA):');
  readln(StudentName);
  readln(StudentAge);
  readln(StudentGPA);

  StudentData.Name := StudentName;
  StudentData.Age := StudentAge;
  StudentData.GPA := StudentGPA;

  write(StudentFile, StudentData);

  Close(StudentFile);
end;

procedure ReadStudentDataFromFile();
begin
  Assign(StudentFile, 'students.dat');
  Reset(StudentFile);

  while not eof(StudentFile) do
  begin
    read(StudentFile, StudentData);
    writeln('Name: ', StudentData.Name);
    writeln('Age: ', StudentData.Age);
    writeln('GPA: ', StudentData.GPA);
  end;

  Close(StudentFile);
end;

begin
  WriteStudentDataToFile();
  ReadStudentDataFromFile();
end
