ActiveAdmin.register GolfTournament do
  menu priority: 2
  permit_params :name, :year, {payouts: []}

  index do
    selectable_column
    id_column
    column :name
    column :year
    column :payouts
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :year
      f.input :payouts, as: :text
    end
    f.actions
  end

  controller do
    def update
      payouts_array = params[:golf_tournament][:payouts].split(/\r\n|\r|\n|,\s?/)
      params[:golf_tournament][:payouts] = payouts_array
      super
    end
  end
end
