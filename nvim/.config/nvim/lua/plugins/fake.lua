vim.cmd([[
  " Choose a random element from a list
  call fake#define('sex', 'fake#choice(["male", "female"])')

  " Get a name of male or female
  " fake#int(1) returns 0 or 1
  call fake#define('name', 'fake#int(1) ? fake#gen("male_name")'
  \ . ' : fake#gen("female_name")')

  " Get a full name
  call fake#define('fullname', 'fake#gen("name") . " " . fake#gen("surname")')

  " Get a nonsense text like Lorem ipsum
  call fake#define('sentense', 'fake#capitalize('
  \ . 'join(map(range(fake#int(3,15)),"fake#gen(\"nonsense\")"))'
  \ . ' . fake#chars(1,"..............!?"))')

  call fake#define('paragraph', 'join(map(range(fake#int(3,10)),"fake#gen(\"sentense\")"))')

  " Alias
  call fake#define('lipsum', 'fake#gen("paragraph")')

  " Get an age weighted by generation distribution
  call fake#define('age', 'float2nr(floor(110 * fake#betapdf(1.0, 1.45)))')

  " Get a domain (ordered by number of websites)
  call fake#define('gtld', 'fake#get(fake#load("gtld"),'
  \ . 'fake#betapdf(0.2, 3.0))')

  call fake#define('email', 'tolower(substitute(printf("%s@%s.%s",'
  \ . 'fake#gen("name"),'
  \ . 'fake#gen("surname"),'
  \ . 'fake#gen("gtld")), "\\s", "-", "g"))')

]])
