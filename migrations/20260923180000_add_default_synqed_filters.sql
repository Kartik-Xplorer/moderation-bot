-- Migration: Add default @synqed developer filters for global chat_id = 0
-- Keywords: developer, programmer, coder, coding, python, javascript, nextjs, react, flutter, api, bot, telegram, automation, ai, chatbot, website, app, hosting, database, github, smm, seo, design, logo, bug, error, debug, startup

INSERT INTO public.filters (chat_id, keyword, filter_reply, msgtype, fileid, nonotif, filter_buttons, created_at, updated_at)
VALUES
    (0, 'developer', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'programmer', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'coder', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'coding', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'python', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'javascript', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'nextjs', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'react', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'flutter', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'api', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'bot', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'telegram', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'automation', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'ai', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'chatbot', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'website', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'app', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'hosting', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'database', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'github', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'smm', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'seo', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'design', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'logo', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'bug', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'error', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'debug', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW()),
    (0, 'startup', '@synqed', 1, '', false, '[]'::jsonb, NOW(), NOW())
ON CONFLICT (chat_id, keyword) 
DO UPDATE SET 
    filter_reply = EXCLUDED.filter_reply,
    updated_at = NOW();
