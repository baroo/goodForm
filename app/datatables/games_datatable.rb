class GamesDatatable
  delegate :params, :link_to,:goodForm_path, :goodForm_statistics_path, to: :@view
  
  def initialize(view)
      @view = view
    end
  
    def as_json(options = {})
      {
        sEcho: params[:sEcho].to_i,
        iTotalRecords: Game.count,
        iTotalDisplayRecords: games.total_entries,
        aaData: data
      }
    end
  
  private
  
    def data
      
      games.map do |game|
        [
          game.kodate.strftime('%b %d, %Y %H:%M:%S'),
          link_to(game.team1.name, goodForm_path(game.team1)) ,
          link_to(game.team2.name, goodForm_path(game.team2)),
          link_to("Click for Statistics", goodForm_statistics_path(game))
        ]
      end

      
    end
  
    def games
      @games ||= fetch_games
    end
    
  def fetch_games
     games = Game.order("#{sort_column} #{sort_direction}")
     games = games.page(page).per_page(per_page)
     games.where(:kodate => (Time.zone.now - 2.hours)..Time.zone.now )
   end    
    
    def page
      params[:iDisplayStart].to_i/per_page + 1
    end
  
    def per_page
      params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
    end
  
    def sort_column
      columns = %w[kodate team1 team2]
      columns[params[:iSortCol_0].to_i]
    end
  
    def sort_direction
      params[:sSortDir_0] == "desc" ? "desc" : "asc"
    end
end