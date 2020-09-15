rem hugo new site doctorflow.net && cd doctorflow.net && hugo new theme flow

rmdir /s /q content

mkdir content

hugo new _index.md

hugo new value-flow\_index.md
hugo new value-flow\blue-flow\index.md
hugo new value-flow\development-flow\index.md
hugo new value-flow\distribution-flow\index.md
hugo new value-flow\operations-flow\index.md
hugo new value-flow\patient-flow\index.md
hugo new value-flow\project-flow\index.md

hugo new crisis\_index.md
hugo new crisis\easy-money\index.md
hugo new crisis\people-first\index.md
hugo new crisis\workshop-theme\index.md

hugo new tbls\_index.md
hugo new tbls\blue-ocean\index.md
hugo new tbls\lean-six-sigma\index.md
hugo new tbls\theory-of-constraints\index.md
hugo new tbls\pensamento\index.md

hugo new learn\_index.md
hugo new learn\articles\_index.md
hugo new learn\books\_index.md

hugo new leadership\_index.md
hugo new leadership\contact\index.md
hugo new leadership\team\index.md

rem authors taxonomy
hugo new authors\racastro\_index.md
hugo new authors\mtbarreiras\_index.md
hugo new authors\maferra\_index.md

rem books
hugo new learn\books\lean-six-sigma.md
hugo new learn\books\proveito-da-duvida.md
