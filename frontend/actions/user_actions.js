import * as UserAPIUtil from '../util/user_api_util';

export const FETCH_USER = 'FETCH_USER';

export const getUser = (user) => ({
    type: FETCH_USER,
    user
})

export const getThisUser = userId => dispatch => (
    UserAPIUtil.fetchUser(userId)
        .then(user => dispatch(getUser(user)))
);