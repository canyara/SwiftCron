//
//  DayTests.swift
//  SwiftCron
//
//  Created by Keegan Rush on 2016/05/06.
//  Copyright © 2016 Rush42. All rights reserved.
//

import XCTest
import SwiftCron

class DayTests: XCTestCase {

	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}

	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}

	func testEvery8thDayOfMonth() {
		let calendar = CronCalendar.shared.current

		let dateToTestFrom = TestData.may11

		let every8thDayCron = CronExpression(minute: "0", hour: "0", day: "8")
		let nextRunDate = every8thDayCron?.getNextRunDate(dateToTestFrom)

		XCTAssertTrue(calendar.isDate(TestData.june8, inSameDayAs: nextRunDate!))
	}

    func testLastDayOfMonthInFeb2016Returns28() {
        let dateToTestFrom = TestData.feb1Of2016

        let cronExpressionUnderTest = CronExpression(day: "L", month: 2, year: 2016)!

        let expectedNextRunDate = TestData.feb28Of2016
        let nextRunDate = cronExpressionUnderTest.getNextRunDate(dateToTestFrom)!
        XCTAssertTrue(CronCalendar.shared.current.isDate(expectedNextRunDate, inSameDayAs: nextRunDate))
    }

    func testLastDayOfMonthInMay2016Returns31() {
        let dateToTestFrom = TestData.may15Of2016

        let cronExpressionUnderTest = CronExpression(day: "L", month: 5, year: 2016)!

        let expectedNextRunDate = TestData.may31Of2016
        let nextRunDate = cronExpressionUnderTest.getNextRunDate(dateToTestFrom)!
        XCTAssertTrue(CronCalendar.shared.current.isDate(expectedNextRunDate, inSameDayAs: nextRunDate))
    }

    func testLastDayOfMonthInJune2016Returns30() {
        let dateToTestFrom = TestData.june1

        let cronExpressionUnderTest = CronExpression(day: "L", month: 6, year: 2016)!

        let expectedNextRunDate = TestData.june30Of2016
        let nextRunDate = cronExpressionUnderTest.getNextRunDate(dateToTestFrom)!
        XCTAssertTrue(CronCalendar.shared.current.isDate(expectedNextRunDate, inSameDayAs: nextRunDate))
    }
}
