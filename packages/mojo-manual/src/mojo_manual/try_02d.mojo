"""
trait 接口声明: 类似 rust trait, go interface 等
   - ref: https://docs.modular.com/mojo/manual/basics.html#traits
   - 包含:
       - 接口 trait 定义/声明(define)
       - 接口实现(implement)
       - 接口调用(call): 配合泛型 generic functions, 支持灵活调用.
"""


trait SomeTrait:
    #
    # todo x: 函数接口声明格式, 需要 ... 结尾, 类似 python def + pass.
    #
    fn required_method(self, x: Int):
        ...


#
# 接口实现
#
@value
struct SomeStruct(SomeTrait):
    #
    # todo x: 接口方法实现
    #
    fn required_method(self, x: Int):
        print("hello traits, impl1", x)


@value
struct SomeStruct2(SomeTrait):
    #
    # todo x: 接口方法实现
    #
    fn required_method(self, x: Int):
        print("hello traits, impl2", x)

    fn greet(self):
        print("another trait impl")


# 泛型函数, 允许传符合接口的实现
fn fun_with_traits[T: SomeTrait](x: T):
    x.required_method(42)


fn use_trait_function():
    let thing = SomeStruct()
    fun_with_traits(thing)

    #
    # call 2:
    #
    let thing2 = SomeStruct2()
    fun_with_traits(thing2)


fn use2():
    let thing = SomeStruct()
    thing.required_method(42)


fn main():
    use_trait_function()

    use2()
