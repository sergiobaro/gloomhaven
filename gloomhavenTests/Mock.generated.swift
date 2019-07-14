// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



#if MockyCustom
import SwiftyMocky
@testable import gloomhaven

    public final class MockyAssertion {
        public static var handler: ((Bool, String, StaticString, UInt) -> Void)?
    }

    func MockyAssert(_ expression: @autoclosure () -> Bool, _ message: @autoclosure () -> String = "Verification failed", file: StaticString = #file, line: UInt = #line) {
        guard let handler = MockyAssertion.handler else {
            assert(expression, message, file: file, line: line)
            return
        }

        handler(expression(), message(), file, line)
    }
#elseif Mocky
import SwiftyMocky
import XCTest
@testable import gloomhaven

    func MockyAssert(_ expression: @autoclosure () -> Bool, _ message: @autoclosure () -> String = "Verification failed", file: StaticString = #file, line: UInt = #line) {
        XCTAssert(expression(), message(), file: file, line: line)
    }
#else
import Sourcery
import SourceryRuntime
#endif


// MARK: - AddMonsterFormDelegate
open class AddMonsterFormDelegateMock: AddMonsterFormDelegate, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }





    open func addMonsterFormDidAddMonsters(_ monsters: [AddMonsterModel]) {
        addInvocation(.m_addMonsterFormDidAddMonsters__monsters(Parameter<[AddMonsterModel]>.value(`monsters`)))
		let perform = methodPerformValue(.m_addMonsterFormDidAddMonsters__monsters(Parameter<[AddMonsterModel]>.value(`monsters`))) as? ([AddMonsterModel]) -> Void
		perform?(`monsters`)
    }


    fileprivate enum MethodType {
        case m_addMonsterFormDidAddMonsters__monsters(Parameter<[AddMonsterModel]>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_addMonsterFormDidAddMonsters__monsters(let lhsMonsters), .m_addMonsterFormDidAddMonsters__monsters(let rhsMonsters)):
                guard Parameter.compare(lhs: lhsMonsters, rhs: rhsMonsters, with: matcher) else { return false } 
                return true 
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_addMonsterFormDidAddMonsters__monsters(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func addMonsterFormDidAddMonsters(_ monsters: Parameter<[AddMonsterModel]>) -> Verify { return Verify(method: .m_addMonsterFormDidAddMonsters__monsters(`monsters`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func addMonsterFormDidAddMonsters(_ monsters: Parameter<[AddMonsterModel]>, perform: @escaping ([AddMonsterModel]) -> Void) -> Perform {
            return Perform(method: .m_addMonsterFormDidAddMonsters__monsters(`monsters`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

// MARK: - AddMonsterFormViewProtocol
open class AddMonsterFormViewProtocolMock: AddMonsterFormViewProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }





    open func display(title: String) {
        addInvocation(.m_display__title_title(Parameter<String>.value(`title`)))
		let perform = methodPerformValue(.m_display__title_title(Parameter<String>.value(`title`))) as? (String) -> Void
		perform?(`title`)
    }

    open func display(viewModel: AddMonsterFormViewModel) {
        addInvocation(.m_display__viewModel_viewModel(Parameter<AddMonsterFormViewModel>.value(`viewModel`)))
		let perform = methodPerformValue(.m_display__viewModel_viewModel(Parameter<AddMonsterFormViewModel>.value(`viewModel`))) as? (AddMonsterFormViewModel) -> Void
		perform?(`viewModel`)
    }


    fileprivate enum MethodType {
        case m_display__title_title(Parameter<String>)
        case m_display__viewModel_viewModel(Parameter<AddMonsterFormViewModel>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_display__title_title(let lhsTitle), .m_display__title_title(let rhsTitle)):
                guard Parameter.compare(lhs: lhsTitle, rhs: rhsTitle, with: matcher) else { return false } 
                return true 
            case (.m_display__viewModel_viewModel(let lhsViewmodel), .m_display__viewModel_viewModel(let rhsViewmodel)):
                guard Parameter.compare(lhs: lhsViewmodel, rhs: rhsViewmodel, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_display__title_title(p0): return p0.intValue
            case let .m_display__viewModel_viewModel(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func display(title: Parameter<String>) -> Verify { return Verify(method: .m_display__title_title(`title`))}
        public static func display(viewModel: Parameter<AddMonsterFormViewModel>) -> Verify { return Verify(method: .m_display__viewModel_viewModel(`viewModel`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func display(title: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_display__title_title(`title`), performs: perform)
        }
        public static func display(viewModel: Parameter<AddMonsterFormViewModel>, perform: @escaping (AddMonsterFormViewModel) -> Void) -> Perform {
            return Perform(method: .m_display__viewModel_viewModel(`viewModel`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
}

