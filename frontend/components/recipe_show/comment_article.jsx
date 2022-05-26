import React from 'react';

class CommentArticle extends React.Component {
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
        this.setState({ editing: ( this.state.editing ? !this.state.editing : this.state.editing )})
    }

    handleChange(e) {
        this.setState({ commentContent: e.target.value})
    }

    handleSubmit(e) {
        e.stopPropagation();
        this.props.updateCurrComment(this.props.comment.id, this.state.commentContent);
        this.setState({ editing: false });
    }

    render() {
        let {comment, deleteCurrComment, currentUser} = this.props;
        return (
            <div className='comments-article-outer-container'>
                {currentUser && currentUser.id === comment.user_id ?
                    <div>
                        <i className="fa-solid fa-trash-can delete-comment-btn" onClick={() => deleteCurrComment(comment.id)}></i>
                        <i className="fa-solid fa-pen-nib edit-comment-button" onClick={this.edit}></i>
                    </div>
                    : ''
                }
                <div className='comments-article-comment-container'>
                    <div className='comments-article-author' >{comment.author}</div>
                    <div className='comments-article-date' >{comment.datestamp} ago</div>
                </div>
                {this.state.edit
                ?
                    <form className='update-comment-form' onSubmit={this.handleSubmit} >
                        <textarea className='update-comment-input'
                            type='text'
                            value={this.state.commentContent}
                            onChange={this.handleChange}
                        ></textarea>
                        <div className='update-comment-form-buttons' >
                            <div className='update-comment-cancel' onClick={this.edit} >Cancel</div>
                            <div className={this.state.commentContent.length >= 5 ? 'comments-add-note' : 'comments-add-note-null'}
                                onClick={this.state.commentContent.length >= 5 ? this.handleSubmit : () => {}} >Edit Note</div>
                        </div>
                    </form>
                :
                    <div className='comments-article-comment-content' >{comment.content}</div>
                }
            </div>
        )
    }
}

export default CommentArticle;