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
verify "text" text is displayed

verify "css_selector" element has "bla bla" text

verify "checkbox" checkbox is checked
```

...

- click
```
click "buttonName" button

click "linkName" link
```
...

- fill
```
fill "Phone Number" with "5555555555"

fill "inputName" with random email
```
...

- select
```
select "Country" from "United States" dropdown

verify "United States" options is selected from "Country" dropdown

```
...

# NOTE: To auto completing bdd-helper steps in RubyMine, IntelliJ IDEs, go to Preferences/Languages & Frameworks/Cucumber section and add "bdd-helper" to the list.
