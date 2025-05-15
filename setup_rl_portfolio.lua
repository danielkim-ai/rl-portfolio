-- setup_rl_portfolio.lua

local folders = {
    "rl-portfolio",
    "rl-portfolio/public",
    "rl-portfolio/pages",
    "rl-portfolio/styles",
    "rl-portfolio/components"
  }
  
  local files = {
    ["rl-portfolio/public/resume.pdf"] = "",  -- Placeholder
    ["rl-portfolio/pages/index.tsx"] = [[
  export default function Home() {
    return (
      <main className="max-w-4xl mx-auto p-6">
        <h1 className="text-4xl font-bold">Your Name</h1>
        <p className="text-gray-600">Reinforcement Learning | CS & Applied Statistics</p>
      </main>
    );
  }
  ]],
    ["rl-portfolio/pages/projects.tsx"] = [[
  export default function Projects() {
    return (
      <main className="max-w-4xl mx-auto p-6">
        <h1 className="text-3xl font-semibold mb-4">Projects</h1>
        <ul className="list-disc list-inside space-y-2">
          <li> SAC on HalfCheetah-v4</li>
          <li> CQL experiments</li>
        </ul>
      </main>
    );
  }
  ]],
    ["rl-portfolio/pages/blog.tsx"] = [[
  export default function Blog() {
    return (
      <main className="max-w-4xl mx-auto p-6">
        <h1 className="text-3xl font-semibold mb-4">Blog</h1>
        <p>Coming soon: my thoughts and notes on RL papers and ideas.</p>
      </main>
    );
  }
  ]],
    ["rl-portfolio/pages/resume.tsx"] = [[
  export default function Resume() {
    return (
      <main className="max-w-4xl mx-auto p-6">
        <h1 className="text-3xl font-semibold mb-4">Resume</h1>
        <a href="/resume.pdf" className="text-blue-600 underline">Download Resume (PDF)</a>
      </main>
    );
  }
  ]],
    ["rl-portfolio/pages/contact.tsx"] = [[
  export default function Contact() {
    return (
      <main className="max-w-4xl mx-auto p-6">
        <h1 className="text-3xl font-semibold mb-4">Contact</h1>
        <p>Email: youremail@example.com</p>
        <p>GitHub: <a href="https://github.com/yourusername" className="text-blue-600">yourusername</a></p>
      </main>
    );
  }
  ]],
    ["rl-portfolio/styles/globals.css"] = "@tailwind base;\n@tailwind components;\n@tailwind utilities;",
    ["rl-portfolio/README.md"] = "# RL Portfolio Website\nA personal site for showcasing Reinforcement Learning work.",
    ["rl-portfolio/package.json"] = [[
  {
    "name": "rl-portfolio",
    "version": "1.0.0",
    "scripts": {
      "dev": "next dev",
      "build": "next build",
      "start": "next start"
    },
    "dependencies": {
      "next": "latest",
      "react": "latest",
      "react-dom": "latest"
    },
    "devDependencies": {
      "tailwindcss": "^3.0.0",
      "autoprefixer": "^10.0.0",
      "postcss": "^8.0.0"
    }
  }
  ]],
    ["rl-portfolio/tailwind.config.js"] = [[
  module.exports = {
    content: ["./pages/**/*.{js,ts,jsx,tsx}"],
    theme: {
      extend: {},
    },
    plugins: [],
  }
  ]],
    ["rl-portfolio/postcss.config.js"] = [[
  module.exports = {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    },
  }
  ]],
    ["rl-portfolio/tsconfig.json"] = [[
  {
    "compilerOptions": {
      "target": "es5",
      "lib": ["dom", "dom.iterable", "esnext"],
      "allowJs": true,
      "skipLibCheck": true,
      "strict": false,
      "forceConsistentCasingInFileNames": true,
      "noEmit": true,
      "esModuleInterop": true,
      "module": "esnext",
      "moduleResolution": "node",
      "resolveJsonModule": true,
      "isolatedModules": true,
      "jsx": "preserve"
    },
    "include": ["next-env.d.ts", "**/*.ts", "**/*.tsx"],
    "exclude": ["node_modules"]
  }
  ]]
  }
  
  -- Create folders
  for _, folder in ipairs(folders) do
    os.execute("mkdir " .. folder)
  end
  
  -- Create files
  for path, content in pairs(files) do
    local file = io.open(path, "w")
    if file then
      file:write(content)
      file:close()
    end
  end
  
  print("RL portfolio project structure created successfully.")
  