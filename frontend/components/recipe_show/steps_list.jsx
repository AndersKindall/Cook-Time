import React from 'react';

class StepList extends React.Component {

    render() {
        let { steps } = this.props;

        return (
            <div className='steps-box'>
                <h1 className='steps-title'>PREPARATION</h1>
                <ol className='steps-list'>
                    {
                        steps.map((step, idx) => {
                            return (
                                <li className='steps-list-item' key={idx}>
                                    <p className='step-number'>Step {step.order_number}</p>
                                    <p className='step-content'>{step.content}</p>

                                </li>
                            )
                        })
                    }
                </ol>
            </div>
        )
    }
}

export default StepList;