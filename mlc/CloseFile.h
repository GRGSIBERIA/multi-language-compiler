#pragma once
#include "Syntax.h"

namespace mlc
{
	namespace syntax
	{
		class CloseFile :
			public Syntax
		{
		public:
			CloseFile();
			virtual ~CloseFile();
		};

	}
}

