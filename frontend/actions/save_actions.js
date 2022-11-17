import * as SavesAPIUtil from '../util/saves_api_util';

export const RECEIVE_SAVE = 'RECEIVE_SAVE';
export const DELETE_ONE_SAVE = 'DELETE_ONE_SAVE';

export const receiveSave = (save) => ({
    type: RECEIVE_SAVE,
    save
})

export const deleteOneSave = (save) => ({
    type: DELETE_ONE_SAVE,
    save
})

export const saveThisRecipe = (recipeId) => dispatch => (
    SavesAPIUtil.saveRecipe(recipeId)
        .then(save => dispatch(receiveSave(save)))
)

export const deleteThisSave = (saveId) => dispatch => (
    SavesAPIUtil.deleteSave(saveId)
        .then(save => dispatch(deleteOneSave(save)))
)