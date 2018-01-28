#pragma once
#include "Language.h"

namespace mlc
{
	namespace lang
	{
		class Python :
			public Language
		{
		public:
			Python();
			virtual ~Python();
		};
	}
}