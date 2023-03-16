#include "acpch.h"
#include "Application.h"

#include "Acorn/Events/ApplicationEvent.h"
#include "Acorn/Log.h"

namespace Acorn
{
	Application::Application()
	{
	}

	Application::~Application()
	{
	}

	void Application::Run()
	{
		WindowResizeEvent e(1280, 720);
		if (e.IsInCategory(EventCategoryApplication))
		{
			AC_TRACE(e);
		}
		if (e.IsInCategory(EventCategoryInput))
		{
			AC_TRACE(e);
		}

		while (true)
		{

		}
	}
}