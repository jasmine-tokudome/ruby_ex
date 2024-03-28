def add(x:, y:, **params)
  z = x + y

  params[:round] ? z.round : z
end

p add(x: 3.75, y: 3, round: true)
options = {:round => true}; p add(x: 3.75, y: 3, **options)
p add(x: 3, y: 4)
