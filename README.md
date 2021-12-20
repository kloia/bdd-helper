# bdd-helper
bdd-helper gem is helping to create Cucumber scenarios fast. You don't have to create a lot of similar step definitions for your projects.

bdd-helper covers your needs.

It combines some of major actions on a browser like click, fill, select ...

# Install
```
gem install bdd-helper
```

#Configure
Configure BddHelper to suit your needs.
```
BddHelper.configure do |config|
  config.timeout = 15  #(Default: 20)
  config.base_url = 'http://www.example.com'
  config.environment = 'staging'
end
```
# Example
- assertion
```
#Finds "text" on the page and verify
verify "text" text is displayed

#Finds a element by css_selector and verify "verify_text"
verify "css_selector" element has "verify_text" text

#Finds a checkbox by label, name or id and verify checked
verify "checkbox" checkbox is checked
```

- click
```
#Finds a button by id, text or title and clicks it
click "locator" button

#Finds a link by id, text or title and clicks it
click "locator" link
```

- fill
```
#will fill in a fillable field with name, id, or label text matching 'locator'
fill "locator" with "5555555555"

#will fill random email in a fillable field with name, id, or label text matching 'locator'
fill "locator" with random email
```

- select
```
#The select box can be found via its name, id or label text. The option can be found by its text. Web element must be select box
select "option" from "dropdown_id_name_or_label_text" dropdown

```


# NOTE: To auto completing bdd-helper steps in RubyMine, IntelliJ IDEs, go to Preferences/Languages & Frameworks/Cucumber section and add "bdd-helper" to the list.
