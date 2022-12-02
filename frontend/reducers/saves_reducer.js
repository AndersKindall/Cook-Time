import { RECEIVE_SAVE, DELETE_ONE_SAVE } from "../actions/save_actions";
import { FETCH_USER } from "../actions/user_actions";
import { RECEIVE_CURRENT_USER, LOGOUT_CURRENT_USER } from "../actions/session_actions";

const savesReducer = (state={}, action) => {
    Object.freeze(state);
    let newState = Object.assign({}, state);

    switch (action.type) {
        case RECEIVE_SAVE:
            newState[action.save.id] = action.save;
            return newState;
        case DELETE_ONE_SAVE:
            delete newState[action.save_id];
            return newState;
        case RECEIVE_CURRENT_USER:
            return Object.assign({}, action.user.saves);
        case LOGOUT_CURRENT_USER:
            return {};
        case FETCH_USER:
            return Object.assign({}, action.user.saves);
        default:
            return state;
    }
};

export default savesReducer;