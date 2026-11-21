
import { createRoot } from 'react-dom/client';
import {
    lazy,
    Suspense,
    useState,
    startTransition
} from 'react';
import './styles.css';

const Student = lazy(() => import('./Student'));
const Admin = lazy(() => import('./Admin'));

const App = () => {
    const [v, setV] = useState('student');
    const [stu, setStu] = useState({ name: '', step: '' });
    const [sk, setSk] = useState(0);
    const [t, setT] = useState(
        () => document.documentElement.dataset.theme || 'light'
    );

    const switchView = (view) => {
        startTransition(() => {
            setV(view);
        });
    };

    const flip = () => {
        const n = t === 'dark' ? 'light' : 'dark';

        document.documentElement.dataset.theme = n;

        try {
            localStorage.setItem('theme', n);
        } catch {}

        setT(n);
    };

    const logout = () => {
        setStu({ name: '', step: '' });
        setSk(k => k + 1);
    };

    return (
        <>
            <header>
                <div className="logo">
                    <img
                        src={`${import.meta.env.BASE_URL}logo.png`}
                        alt="iGeeks – Bridging Technology"
                    />
                    <small>Test System</small>
                </div>

                {v === 'student' && stu.name ? (
                    <div className="who">
                        <span className="chip g">
                            👤 {stu.name}
                        </span>

                        {stu.step !== 'exam' && (
                            <button
                                className="btn s alt"
                                onClick={logout}
                            >
                                Log out
                            </button>
                        )}
                    </div>
                ) : (
                    <div className="seg">
                        {[
                            ['student', 'Student exam'],
                            ['admin', 'Admin panel']
                        ].map(([k, l]) => (
                            <button
                                key={k}
                                className={v === k ? 'on' : ''}
                                onClick={() => switchView(k)}
                            >
                                {l}
                            </button>
                        ))}
                    </div>
                )}

                <button
                    className="theme"
                    onClick={flip}
                    aria-label={
                        t === 'dark'
                            ? 'Switch to light mode'
                            : 'Switch to dark mode'
                    }
                    title={t === 'dark' ? 'Light mode' : 'Dark mode'}
                >
                    {t === 'dark' ? '☀️' : '🌙'}
                </button>
            </header>

            <main className={v === 'admin' ? 'wide' : ''}>
                <Suspense
                    fallback={
                        <div className="loading">
                            Loading application...
                        </div>
                    }
                >
                    {v === 'student' ? (
                        <Student
                            key={sk}
                            onUser={setStu}
                        />
                    ) : (
                        <Admin />
                    )}
                </Suspense>
            </main>
        </>
    );
};

createRoot(document.getElementById('root')).render(<App />);
