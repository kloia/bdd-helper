#!/bin/bash

function usage() {
  echo
  echo "NAME"
  echo "migrate-to-1.0.sh - Migrate a codebase from bdd-helper 0.x to 1.0."
  echo
  echo "This script attempts to adjust a codebase for the package and type refactorings"
  echo "made for bdd-helper 1.0"
  echo
  echo "SYNOPSIS"
  echo "migrate-to-1.0.sh [Pattern]"
  echo
  echo "OPTIONS"
  echo " -h --help    this help"
  echo " [Pattern]    a find pattern, default to *.feature if you don't provide a pattern"
  echo "              don't forget to enclose your pattern with double quotes \"\" to "
  echo "              avoid pattern to be expanded by your shell prematurely."
  echo
  echo "EXAMPLE"
  echo " migrate-to-1.0.sh \"*.feature\""
  exit 0
}

if [ "$1" == "-h" -o "$1" == "--help" ] ;
then
 usage
fi

FILES_PATTERN=${1:-*.feature}

echo ''
echo "Migrating Spring HATEOAS references to 1.0 for files : $FILES_PATTERN"
echo ''

FILES=`find . -name "$FILES_PATTERN"`

EXPRESSION="
s/switch window to first opened/switch to first window/g;
s/switch window to last opened/switch to last window/g;
s/navigate browser to \"\([^\"]*\)\" url/visit \"\1\" url/g;
s/user should redirected to \"\([^\"]*\)\" path/verify current path is \"\1\"/g;
s/alert message should be \"\([^\"]*\)\"/verify \"\1\" alert message is displayed/g;
s/alert message should_not be \"\([^\"]*\)\"/verify \"\1\" alert message is not displayed/g;

s/select \"\([^\"]*\)\" as \"\([^\"]*\)\" from dropdown/select \"\1\" from \"\2\" dropdown/g;
s/\"\([^\"]*\)\" should be selected for \"\([^\"]*\)\" dropdown/verify \"\1\" options is selected from \"\2\" dropdown/g;
s/\"\([^\"]*\)\" should_not be selected for \"\([^\"]*\)\" dropdown/verify \"\1\" options is not selected from \"\2\" dropdown/g;
s/\"\([^\"]*\)\" dropdown should contain \"\([^\"]*\)\" option/verify \"\1\" dropdown contains \"\2\" option/g;
s/\"\([^\"]*\)\" dropdown should_not contain \"\([^\"]*\)\" option/verify \"\1\" dropdown does not contain \"\2\" option/g;
s/\"\([^\"]*\)\" dropdown should contain following options:/verify \"\1\" dropdown contains the options below:/g;
s/\"\([^\"]*\)\" dropdown should_not contain following options:/verify \"\1\" dropdown does not contain the options below:/g;

s/fill input boxes with these values:/fill inputs:/g;
s/fill \"\([^\"]*\)\" with random name/fill \"\1\" with random first name/g;
s/fill \"\([^\"]*\)\" with random gsm/fill \"\1\" with random phone number/g;

s/click \"\([^\"]*\)\" link by id/click \"\1\" link/g;
s/click \"\([^\"]*\)\" link by title/click \"\1\" link/g;
s/click \"\([^\"]*\)\" link by text/click \"\1\" link/g;
s/click \"\([^\"]*\)\" button by id/click \"\1\" button/g;
s/click \"\([^\"]*\)\" button by title/click \"\1\" button/g;
s/click \"\([^\"]*\)\" button by text/click \"\1\" button/g;

s/page should contain \"\([^\"]*\)\" content/verify \"\1\" text is displayed/g;
s/page should_not contain \"\([^\"]*\)\" content/verify \"\1\" text is not displayed/g;
s/page should contain the following contents:/verify below texts are displayed:/g;
s/page should_not contain the following contents:/verify below texts are not displayed:/g;
s/page should contain \"\([^\"]*\)\" button/verify \"\1\" button is displayed/g;
s/page should_not contain \"\([^\"]*\)\" button/verify \"\1\" button is not displayed/g;
s/\"\([^\"]*\)\" button should be disabled/verify \"\1\" button is disabled/g;
s/\"\([^\"]*\)\" button should_not be disabled/verify \"\1\" button is enabled/g;
s/\"\([^\"]*\)\" checkbox should be checked/verify \"\1\" checkbox is checked/g;
s/\"\([^\"]*\)\" checkbox should be unchecked/verify \"\1\" checkbox is unchecked/g;
s/\"\([^\"]*\)\" radio button should be selected/verify \"\1\" radio button is selected/g;
s/\"\([^\"]*\)\" radio button should be unselected/verify \"\1\" radio button is not selected/g;
s/generate \"\([^\"]*\)\" char random string and type into type \"\([^\"]*\)\" value \"\([^\"]*\)\"/generate \1\ char random string and type into type \"\2\" value \"\3\"/g;
s/wait \"\([^\"]*\)\" seconds/wait \1\ seconds/g;
"

for FILE in $FILES
do
    echo "Adapting $FILE"
    # echo $EXPRESSION
    sed -i "" -e "$EXPRESSION" $FILE
done

echo
echo 'Done!'
echo
echo 'After that, review your changes, commit and code on! \ö/'