class LeaguesDatatable
  delegate :params, :link_to, to: :@view
  
  def initialize(view)
      @view = view
    end
  
    def as_json(options = {})
      {
        sEcho: params[:sEcho].to_i,
        iTotalRecords: League.count,
        iTotalDisplayRecords: leagues.total_entries,
        aaData: data
      }
    end
  
  private
  
    def data 
      leagues.map do |league|
        [
         link_to(league.name, @view.goodForm_leagues_path(league.id))
        ]
      end      
    end
  
    def leagues
      @games ||= fetch_leagues
    end
    
  def fetch_leagues
    leagues = League.order("#{sort_column} #{sort_direction}")
    leagues = leagues.page(page).per_page(per_page)
   
    if params[:sSearch].present?
      leagues.where("name like :search", search: "%#{params[:sSearch]}%")
    else
     leagues
    end
  end    
    
    def page
      params[:iDisplayStart].to_i/per_page + 1
    end
  
    def per_page
      params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
    end
  
    def sort_column
      columns = %w[name]
      columns[params[:iSortCol_0].to_i]
    end
  
    def sort_direction
      params[:sSortDir_0] == "desc" ? "desc" : "asc"
    end
end