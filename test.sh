git filter-branch --env-filter '
OLD_EMAIL="hshoon@egiskorea.com"
NEW_EMAIL="devhshoon@gmail.com"
GIT_COMMITTER_NAME="$(git config user.name)"
GIT_AUTHOR_NAME="$(git config user.name)"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_EMAIL="$NEW_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_EMAIL="$NEW_EMAIL"
fi
' --tag-name-filter cat -- --all