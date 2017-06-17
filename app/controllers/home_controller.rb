class HomeController < ApplicationController
    def index
    end

    def contact_us
    end
 
    def menu
        @sections = Section.all
        @sort_column = 'price'
        @sort_direction = 'ascending'
        if params[:section_id].present?
            @current_section = Section.find(params[:section_id])
            @food_items = @current_section.food_items.order("count_views DESC")
        else
            @food_items = FoodItem.all
        end

        if params[:sort_column].present?
            @sort_column = params[:sort_column]
            @sort_direction = params[:sort_direction]
            direction = params[:sort_direction] == 'ascending' ? 'ASC' : 'DESC'
            @food_items = @food_items.order("#{params[:sort_column]} #{direction}")
        end

        if params[:search].present?
          @food_items = @food_items.search(params[:search]).order("created_at DESC")
        else
          @food_items = @food_items.all.order('created_at DESC')
        end
    end

end
