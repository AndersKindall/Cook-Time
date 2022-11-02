import React from "react";
import RecipeIndexCard from '../recipes/recipe_index_card'

class SearchRecipes extends React.Component {
    componentDidMount() {
        this.props.clearSearch();
        this.props.getAllRecipes();
        this.props.searchPage(this.props.match.params.query);
        this.props.closeModal();
        window.scrollTo(0, 0);
    }

    componentDidUpdate(oldProps) {
        
    }
    render() {

    }
}

export default SearchRecipes