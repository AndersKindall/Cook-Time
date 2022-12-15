import React from 'react';

import CommentArticle from './comment_article';

class CommentsBox extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            input: ''
        }
        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.clearInput = this.clearInput.bind(this)

    }

    handleChange(e) {
        let newCommentInput = e.target.value;
        this.setState({ input: newCommentInput })
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.addComment(this.props.recipe.id, this.state.input)
        this.setState({ input: '' })
    }

    clearInput(e) {
        this.setState({ input: '' })
    }

    render() {
        const {comments, updateCurrComment, deleteCurrComment, currentUser} = this.props
        return (
            <div className='comments-outer-box'>
                <h1 className='comments-head'>Cooking Notes</h1>
                <div className='comments-form-box' >
                    <form className='comments-form' >
                        <p className='comments-form-header'>Add Note</p>
                        <div className='comments-form-inner-box' >
                            <textarea className='comments-input' onChange={this.handleChange} value={this.state.input} placeholder="Share your notes with other cooks." ></textarea>
                        </div>
                        <div className='comments-form-buttons'>
                            <div className='comments-form-cancel-button' onClick={this.clearInput} >Cancel</div>
                            <div className={this.state.input.length >= 5 ? 'comments-add-note' : 'comments-add-note-null'}
                                onClick={this.state.input.length >= 5 ? this.handleSubmit : () => {}} >Submit</div>
                        </div>
                    </form>
                </div>
                <div className='comments-container-head-box'>
                    <div className='comments-container-head'>
                        <h1 className='comments-container-head-title'> All Notes <span className='comments-container-comments-number'>({comments.length})</span></h1>
                    </div>
                </div>
                <div className='comments-container' >
                    {comments.length === 0 ?
                        <p className='comments-container-empty' >There are no notes on this recipe yet.</p>
                    :
                        <div className='comments-container-comments' >
                            {comments.map((comment, index) => {
                                return <CommentArticle key={index} comment={comment} updateCurrComment={updateCurrComment} deleteCurrComment={deleteCurrComment} currentUser={currentUser} />
                            })} 
                        </div>                            
                    }
                </div>
            </div>
        )
    }
}

export default CommentsBox;