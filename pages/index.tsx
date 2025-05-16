'use client';

import Link from 'next/link';
import ThemeToggle from '../components/ThemeToggle';

export default function Home() {
  return (
    <div className="max-w-3xl mx-auto p-6 bg-white text-gray-800 dark:bg-black dark:text-gray-100 min-h-screen transition-colors duration-300">
      <header className="mb-10 flex items-center justify-between">
        <div>
          <h1 className="text-4xl font-bold">Seok (Daniel) Kim</h1>
          <p className="text-lg text-gray-600 dark:text-gray-300">
            Reinforcement Learning | Computer Science & Applied Statistics
          </p>
        </div>
        <ThemeToggle />
      </header>


      <section className="mb-10">
        <h2 className="text-2xl font-semibold">About Me</h2>
        <p className="mt-2 text-gray-800 dark:text-gray-200">
          I'm currently pursuing a double major in Computer Science and Applied Statistics, with a focus on
          Reinforcement Learning. I'm exploring foundational concepts and building real-world projects to expand my skills.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-2xl font-semibold">Projects</h2>
        <ul className="list-disc list-inside mt-2">
          <li><strong>Coming soon</strong>: Training SAC on HalfCheetah-v4 using REINFORCE-style gradients</li>
          <li><strong>Coming soon</strong>: Offline RL with CQL on random vs expert datasets</li>
          <li><strong>Coming soon</strong>: RL Blog - Policy Gradients, Value Function Approximation</li>
        </ul>
      </section>

      <section className="mb-10">
        <h2 className="text-2xl font-semibold">Resume</h2>
        <a href="/resume.pdf" className="text-blue-600 underline">Download my resume (PDF)</a>
      </section>

      <section>
        <h2 className="text-2xl font-semibold">Contact</h2>
        <p className="mt-2">Email: coderpoirot@gmail.com</p>
        <p className="mt-2">Email : daniel1kim@yonsei.ac.kr</p>
        <p>GitHub: <a href="https://github.com/danielkim-ai" className="text-blue-600">github.com/danielkim-ai</a></p>
      </section>

      <p className="text-gray-800 dark:text-gray-200 mt-4">
        This text changes with the theme!
      </p>
    </div>
  );
}
