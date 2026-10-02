return {

s({trig="env", snippetType="snippet", dscr="Begin and end an arbitrary environment"},
    fmta(
        [[
        \begin{<>}
            <>
        \end{<>}
        ]],
        {i(1), i(2), rep(1)}
    )
),

s({trig="img", snippetType="snippet", dscr="Insert an image"},
    fmta(
        [[
        \begin{center}
            \includegraphics[width=\textwidth]{<>}
        \end{center}
        ]],
        {i(1)}
    )
),

}
