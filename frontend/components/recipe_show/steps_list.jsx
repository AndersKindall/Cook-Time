import React from 'react';

class StepList extends React.Component {

    render() {
        let { steps } = this.props;

        return (
            <div className='steps-box'>
                <h1 className='steps-title'>PREPARATION</h1>
                <ul className='steps-list'>
                    {
                        steps.map((step) => {
                            return (
                                <li className='steps-list-item'>
                                    <p className='step-number'>Step {step.order_number}</p>
                                    <p className='step-content'>{step.content}</p>

                                </li>
                            )
                        })
                    }
                </ul>
            </div>
        )
    }
}

export default StepList;