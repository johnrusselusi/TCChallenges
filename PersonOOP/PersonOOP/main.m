//
//  main.m
//  PersonOOP
//
//  Created by John Russel Usi on 9/24/14.
//  Copyright (c) 2014 John Russel Usi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Employee.h"

int displayMenu();
Person *addPerson();
Student *addStudent();
Employee *addEmployee();

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    
    int menuChoice;
      
    NSMutableArray *personsArray = [[NSMutableArray alloc]init];
    
    do{
    
    menuChoice = displayMenu();
    
    switch (menuChoice) {
      case 1:
        [personsArray addObject:addPerson()];
        break;
      case 2:
        [personsArray addObject:addStudent()];
        break;
      case 3:
        [personsArray addObject:addEmployee()];
        break;
      case 4:
        for (Person *p in personsArray){
          if ([p isKindOfClass:[Person class]]) {
            
            NSLog(@"%@", p);
          }
        }
        break;
      case 5:
        for (Student *s in personsArray){
          if ([s isKindOfClass:[Student class]]) {
            
            NSLog(@"%@", s);
          }
        }
        break;
      case 6:
        for (Employee *e in personsArray){
          if ([e isKindOfClass:[Employee class]]) {
            
            NSLog(@"%@", e);
          }
        }
        break;
      case 7:
        return 0;
        break;
      default:
        NSLog(@"Invalid choice!");
        break;
    }
    }while (menuChoice != 7);
  }
  
    return 0;
}


int displayMenu(){
  
  int menuChoice;
  
  system("clear");
  printf("[1] - Add a person\n");
  printf("[2] - Add a student\n");
  printf("[3] - Add an employee\n");
  printf("[4] - Display Persons\n");
  printf("[5] - Display Students\n");
  printf("[6] - Display Employees\n");
  printf("[7] - Exit\n");
  printf("Enter your choice: ");
  scanf("%d", &menuChoice);
  
  return menuChoice;
}

Person *addPerson(){
  
  char fname[20], lname[20];
  
  printf("Enter first name: ");
  scanf("%s", fname);
  printf("Enter last name: ");
  scanf("%s", lname);
  
  NSString *firstName = [NSString stringWithUTF8String:fname];
  NSString *lastName = [NSString stringWithUTF8String:lname];
  
  Person *person = [[Person alloc]initWithFirstName:firstName
                                           lastName:lastName];
  
  return person;
  
}

Student *addStudent(){
  
  char fname[20], lname[20];
  
  printf("Enter first name: ");
  scanf("%s", fname);
  printf("Enter last name: ");
  scanf("%s", lname);
  
  NSString *firstName = [NSString stringWithUTF8String:fname];
  NSString *lastName = [NSString stringWithUTF8String:lname];
  
  Student *student = [[Student alloc]initWithFirstName:firstName
                                           lastName:lastName];
  
  return student;
  
}

Employee *addEmployee(){
  
  char fname[20], lname[20];
  
  printf("Enter first name: ");
  scanf("%s", fname);
  printf("Enter last name: ");
  scanf("%s", lname);
  
  NSString *firstName = [NSString stringWithUTF8String:fname];
  NSString *lastName = [NSString stringWithUTF8String:lname];
  
  Employee *employee = [[Employee alloc]initWithFirstName:firstName
                                           lastName:lastName];
  
  return employee;
}


