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

    render() {
        
        let {comment, deleteCurrComment, currentUser} = this.props;
        return (
            <div className='comments-article-outer-container'>
                <div className='comments-article-author-container'>
                    <div className='comments-article-author' >{comment.author}</div>
                    <div className='comments-article-date' >{comment.datestamp} ago</div>
                </div>
                <div className='comments-article-content-container'>
                    {this.state.editing
                    ?
                        <form className='update-comment-form' onSubmit={this.handleSubmit} >
                            <textarea className='update-comment-input'
                                type='text'
                                value={this.state.commentContent}
                                onChange={this.handleChange}
                            ></textarea>
                            <div className='update-comment-form-buttons' >
                                <div className='update-comment-cancel' onClick={this.edit} >Cancel</div>
                                <div className={this.state.commentContent.length >= 5 ? 'comments-edit-note' : 'comments-edit-note-null'}
                                    onClick={this.state.commentContent.length >= 5 ? this.handleSubmit : () => {}} >Edit Note</div>
                            </div>
                        </form>
                    :
                        <div className='comments-article-comment-content' >{comment.content}</div>
                    }
                    {(currentUser && currentUser.id === comment.user_id) && (!this.state.editing) ?
                        <div className='update-comment-form-buttons'>
                            <div className="delete-note" onClick={() => deleteCurrComment(comment.id)}>Delete Note</div>
                            <div className="comments-edit-note" onClick={this.edit}>Edit Note</div>
                        </div>
                        : ''
                    }
                </div>
            </div>
        )
    }
}

export default CommentArticle;