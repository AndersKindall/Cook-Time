![alt text](https://github.com/AndersKindall/Cook-Time/blob/main/app/assets/images/cook-time-cropped.png "Logo")
# [Cook Time](https://cook-time1.herokuapp.com) - A clone of the NYT Cooking App
## Technologies Used
* React and Redux for frontend
* Ruby on Rails for backend
* PostgreSQL for database
* Amazon AWS S3 for image storage
* Heroku for hosting

## Features
* New account creation, with login and demo login utilizing a modal to switch back and forth between login and create account
* A recipe search bar that displays on all pages with a drop down list of recipe linlks based on what the user is typing in the bar
* A comment section on each recipe page with full CRUD functionality
* A five star recipe rating on each recipe page with full CRUD functionality.  Average ratings are listed and updated each time a new rating is added

## Highligthed Features
### Comments
While logged in, if a user has previously commented on a recipe, they may edit any of their own comments.  To allow for inline editing of each comment, I utilized the onClick function in React to change the state.  Using a ternary function, if "editing" was truthy, an edit box would display, allowing the user to edit the comment or close the box.
![alt text](https://github.com/AndersKindall/Cook-Time/blob/main/app/assets/images/editing.png "edit-photo")
![alt text](https://github.com/AndersKindall/Cook-Time/blob/main/app/assets/images/editing-2.png "edit2-photo")
```javascript
//CommentArticle
    constructor(props) {
        super(props)
        this.state = {
            editing: false,
            commentContent: this.props.comment.content
        }
        this.edit = this.edit.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this)
        this.handleChange = this.handleChange.bind(this)
    }

    edit() {
        this.setState({ editing: !this.state.editing })
    }

    handleChange(e) {
        this.setState({ commentContent: e.target.value})
    }

    handleSubmit(e) {
        e.stopPropagation();
        this.props.updateCurrComment(this.props.comment.id, this.state.commentContent);
        this.setState({ editing: false });
    }
```
## Future Features
* Recipe Box that allows users to save recipes
* Carousel on home page that allows users to shuffle through selected recipes

