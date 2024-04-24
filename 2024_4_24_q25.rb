def add(x:, y:, **params)
  z = x + y

  params[:round] ? z.round : z
end

p add(x: 2.75, y: 5.25, round: true)

