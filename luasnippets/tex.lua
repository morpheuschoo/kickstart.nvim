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

s({ trig = "enum", snippetType = "snippet", dscr = "Simple enumerate environment" },
    fmta(
        [[
        \begin{enumerate}[label=\textbf{<>}, align=left]
            \item <>
        \end{enumerate}
        ]],
        {
            c(1, {
                t("(\\arabic*)"),
                t("(\\alph*)"),
                t("(\\roman*)"),
            }),
            i(2),
        }
    )
),

s({ trig = "it", snippetType = "snippet", dscr = "Item with choice between standard or numbered counter label" },
    fmta(
        [[
        <>
        ]],
        {
            c(1, {
                -- Option A: Standard clean item
                sn(
                    nil,
                    fmta(
                        "\\item <>",
                        { i(1) }
                    )
                ),
                -- Option B: Special item with \refstepcounter above it
                sn(
                    nil,
                    fmta(
                        [[
                        \refstepcounter{enumi}
                        \item[\textbf{(\<>{enumi}<>)}] <>
                        ]],
                        {
                            -- Counter type choice: \arabic, \alph, or \roman
                            c(1, {
                                t("\\arabic"),
                                t("\\alph"),
                                t("\\roman"),
                            }),
                            i(2), -- Optional extra text inside parens
                            i(3), -- Item body text
                        }
                    )
                ),
            }),
        }
    )
),

s({trig="flmeqn ", snippetType="snippet", dscr="Left aligned multiline equation"},
    fmta(
        [[
        $\begin{aligned}[t]
                 & <>
            \end{aligned}$
        ]],
        {i(1)}
    )
),

s({trig="img", snippetType="snippet", dscr="Insert an image"},
    fmta(
        [[
        \begin{center}
            \includegraphics[width=\linewidth]{<>}
        \end{center}
        ]],
        {i(1)}
    )
),

s({trig="bold", snippetType="snippet",dscr="Bold"},
    fmta(
        [[
        \textbf{<>}
        ]],
        {i(1)}
    )
),

}
