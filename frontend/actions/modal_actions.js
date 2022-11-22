export const OPEN_MODAL = 'OPEN_MODAL';
export const CLOSE_MODAL = 'CLOSE_MODAL';
export const OPEN_SAVE_MODAL = 'OPEN_SAVE_MODAL';

export const openModal = modal => {
    return {
        type: OPEN_MODAL,
        modal
    };
};

export const closeModal = () => {
    return {
        type: CLOSE_MODAL
    };
};

export const openSaveModal = (modal, recipe) => {
    return {
        type: OPEN_SAVE_MODAL,
        modal,
        recipe
    }
}