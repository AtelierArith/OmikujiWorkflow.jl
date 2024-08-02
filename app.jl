using Plots

using OmikujiWorkflow: get_omikuji

function main()
    omikuji = get_omikuji()
    @info "Today's omikuji is $omikuji"

    p = plot(
        xlims=(0, 1), ylims=(0, 1), legend=false,
        xticks=false, yticks=false,
        axis=false, border=:none,
        title="Today's Omikuji(Fortune)",
    )
    annotate!(p, 0.5, 0.5, text(omikuji, 30, :center))
    plot(p)
    savefig(p, "omikuji.png")
    @assert isfile("omikuji.png")
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end
