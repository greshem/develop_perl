#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__

class Data_cache
{
	static void * Update( void *);
	MThread m_update_thread;
	int Start();
}

void * Data_cache::Update(void *in)
{
	Data_cache * cache=(Data_cache *)in;
	cache->loop();
}

Data_cache::Start()
{
	m_update_thread.StartThread(update, this);
}

