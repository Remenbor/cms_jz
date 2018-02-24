# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
                        {
                            name: 'Li',
                            coding: 'bianma01',
                            role: '系统管理员',
                            sex: '0',
                            age: '20',
                            phone: '123456',
                            email: '123456@qq.com',
                            state: '0'
                        },
                        {
                            name: 'Xu',
                            coding: 'bianma02',
                            role: '老板',
                            sex: '0',
                            age: '20',
                            phone: '12345678',
                            email: '12345678@qq.com',
                            state: '0'
                        }
                    ])

departments = Department.create([
                                    {
                                        name: '公司',
                                        coding: 'company',
                                        parent: ''
                                    },
                                    {
                                        name: '人事',
                                        coding: 'personnel',
                                        parent: 'company'
                                    },
                                    {
                                        name: '技术',
                                        coding: 'technology',
                                        parent: 'company'
                                    }
                                ])

permissions= Permission.create([
                                   {
                                       name: 'root'
                                   },
                                   {
                                       name: 'companyadmin'
                                   },
                                   {
                                       name: 'departmentadmin'
                                   },
                                   {
                                       name: 'personneladmin'
                                   }
                               ])

user_permissions = UserPermission.create([
                                             {
                                                 user_id: '1',
                                                 permission_id: '1'
                                             },
                                             {
                                                 user_id: '2',
                                                 permission_id: '2'
                                             }
                                         ])