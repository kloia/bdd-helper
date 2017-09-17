# bdd-helper
bdd-helper gem is helping to create Cucumber scenarios fast. You don't have to create a lot of similar step definitions for your projects.

bdd-helper covers your needs.

It combines some of major actions on a browser like click, fill, select ...

# Install
```
gem install bdd-helper
```

# Example
- assertion
```
page should contain "Test" content

page should contain "css" "#test .form" web element

"Agree" checkbox should be checked
```

...

- click
```
click "Save" button by text

click type "id" value "save" web element
```
...

- fill
```
fill "Phone Number" with "5555555555"

fill type "id" value "mobilePhone" web element with "5555555555"
```
...

- select
```
select "Country" as "United States" from dropdown

"United States" should be selected for "Country" dropdown

"Country" dropdown should contain "United States" option
```
...

# NOTE: To auto completing bdd-helper steps in RubyMine, IntelliJ IDEs, go to Preferences/Languages & Frameworks/Cucumber section and add "bdd-helper" to the list.
