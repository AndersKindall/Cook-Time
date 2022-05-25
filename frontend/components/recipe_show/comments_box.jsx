import React from 'react';

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
        return (
            <div>
                <h1 className='comments-head'>Cooking Notes</h1>
                <div className='comments-form-box' >
                    <form className='comments-form' >
                        <div className='comments-form-inner-box' >
                            <textarea className='comments-input' onChange={this.handleChange} value={this.state.input} placeholder="Share your notes with other cooks." ></textarea>
                        </div>
                        <div className='comments-form-buttons'>
                            <div className='comments-form-cancel-button' onClick={this.clearInput} >Cancel</div>
                            <div className={this.state.input.length >= 5 ? 'comments-add-note' : 'comments-add-note-null'}
                                onClick={this.state.input.length >= 5 ? this.handleSubmit : () => {}} >Add Note</div>
                        </div>
                    </form>
                </div>
            </div>
        )
    }
}

export default CommentsBox;