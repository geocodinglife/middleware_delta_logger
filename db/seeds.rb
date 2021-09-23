User.delete_all
Post.delete_all

User.create([
  {name: 'ricardo', role: 'admin',    password: '123456'},
  {name: 'geo',     role: 'employee', password: '234567'},
  {name: 'tomas',   role: 'employee', password: '345678'},
  {name: 'tito',    role: 'employee', password: '456789'},
])

Post.create(
  title: 'This is the first post',
  content: 'just adding dummy text for data',
  publish: true,
  user_id: 2
)
