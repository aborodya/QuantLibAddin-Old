
/*
 Copyright (C) 2007 Ferdinando Ametrano
 Copyright (C) 2006, 2007 Eric Ehlers

 This file is part of QuantLib, a free-software/open-source library
 for financial quantitative analysts and developers - http://quantlib.org/

 QuantLib is free software: you can redistribute it and/or modify it
 under the terms of the QuantLib license.  You should have received a
 copy of the license along with this program; if not, please email
 <quantlib-dev@lists.sf.net>. The license is also available online at
 <http://quantlib.org/license.shtml>.

 This program is distributed in the hope that it will be useful, but WITHOUT
 ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 FOR A PARTICULAR PURPOSE.  See the license for more details.
*/

#ifndef qlxl_conversions_vectortooper_hpp
#define qlxl_conversions_vectortooper_hpp

#include <oh/ohdefines.hpp>
#include <ohxl/Conversions/vectortooper.hpp>
#include <xlsdk/xlsdkdefines.hpp>
#include <ql/math/array.hpp>

// Override functions in the ObjectHandler namespace
namespace ObjectHandler {

    inline void vectorToOper(const QuantLib::Array &a, OPER &xVector) {
        vectorToOper(a.begin(), a.end(), xVector);
    }

}

#endif

