class TeamsDatatable
  delegate :params, :link_to,:goodForm_path, to: :@view
  
  def initialize(view)
      @view = view
    end
  
    def as_json(options = {})
      {
        sEcho: params[:sEcho].to_i,
        iTotalRecords: Team.count,
        iTotalDisplayRecords: teams.total_entries,
        aaData: data
      }
    end
  
  private
  
    def data 
      teams.map do |team|
        [
         link_to(team.name, goodForm_path(team.id))
        ]
      end      
    end
  
    def teams
      @games ||= fetch_teams
    end
    
  def fetch_teams
    teams = Team.order("#{sort_column} #{sort_direction}")
    teams = teams.page(page).per_page(per_page)
   
    if params[:sSearch].present?
      teams.where("name like :search", search: "%#{params[:sSearch]}%")
    else
     teams
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