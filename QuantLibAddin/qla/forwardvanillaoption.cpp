
/*
 Copyright (C) 2005 Eric Ehlers

 This file is part of QuantLib, a free-software/open-source library
 for financial quantitative analysts and developers - http://quantlib.org/

 QuantLib is free software: you can redistribute it and/or modify it under the
 terms of the QuantLib license.  You should have received a copy of the
 license along with this program; if not, please email quantlib-dev@lists.sf.net
 The license is also available online at http://quantlib.org/html/license.html

 This program is distributed in the hope that it will be useful, but WITHOUT
 ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 FOR A PARTICULAR PURPOSE.  See the license for more details.
*/

#if defined(HAVE_CONFIG_H)     // Dynamically created by configure
    #include <qla/config.hpp>
#endif
#include <qla/forwardvanillaoption.hpp>
#include <qla/typefactory.hpp>

// indexes to the Property vector
// FIXME - need a cleaner way to achieve this
#define FIELD_NPV                       "NPV"
#define FIELD_ENGINE                    "ENGINE"
#define IDX_NPV                         0
#define IDX_ENGINE                      1

namespace QuantLibAddin {

    ForwardVanillaOption::ForwardVanillaOption(
            const std::string &handleBlackScholes,
            const double &moneyness,
            const long &resetDate,
            const std::string &optionTypeID,
            const std::string &payoffID,
            const double &strike,
            const std::string &exerciseID,
            const long &exerciseDate,
            const long &settlementDate,
            const std::string &engineID,
            const long &timeSteps) {

        boost::shared_ptr<BlackScholesProcess> blackScholesProcess =
            OH_GET_OBJECT(BlackScholesProcess, handleBlackScholes);
        if (!blackScholesProcess)
            QL_FAIL("ForwardVanillaOption: error retrieving object " + handleBlackScholes);
        const boost::shared_ptr<QuantLib::BlackScholesProcess> blackScholesProcessQL = 
            OH_GET_REFERENCE(QuantLib::BlackScholesProcess, blackScholesProcess);

        boost::shared_ptr<QuantLib::StrikedTypePayoff> payoff =
            Create<boost::shared_ptr<QuantLib::StrikedTypePayoff> >()(optionTypeID, payoffID, strike);
        boost::shared_ptr<QuantLib::Exercise> exercise = 
            Create<boost::shared_ptr<QuantLib::Exercise> >()(exerciseID, exerciseDate, settlementDate);
        boost::shared_ptr<QuantLib::PricingEngine> pricingEngine =
            Create<boost::shared_ptr<QuantLib::PricingEngine> >()(engineID, timeSteps);
        forwardVanillaOption_ = boost::shared_ptr<QuantLib::ForwardVanillaOption>(
            new QuantLib::ForwardVanillaOption(
                moneyness,
                QuantLib::Date(resetDate),
                blackScholesProcessQL, 
                payoff, 
                exercise, 
                pricingEngine));
        ObjHandler::any_ptr any_npv(new boost::any(forwardVanillaOption_->NPV()));
        ObjHandler::any_ptr any_engine(new boost::any(std::string(engineID)));
        ObjHandler::ObjectProperty prop_npv(FIELD_NPV, any_npv);
        ObjHandler::ObjectProperty prop_engine(FIELD_ENGINE, any_engine);
        properties_.push_back(prop_npv);
        properties_.push_back(prop_engine);
    }

}

