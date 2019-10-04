.class public Lh/f/b/k;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field public static final a:Lh/f/b/l;

.field public static final b:[Lh/i/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/f/b/l;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v1, Lh/f/b/l;

    invoke-direct {v1}, Lh/f/b/l;-><init>()V

    :goto_1
    sput-object v1, Lh/f/b/k;->a:Lh/f/b/l;

    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Lh/i/c;

    sput-object v0, Lh/f/b/k;->b:[Lh/i/c;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lh/i/c;
    .locals 1

    .line 1
    sget-object v0, Lh/f/b/k;->a:Lh/f/b/l;

    invoke-virtual {v0, p0}, Lh/f/b/l;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/jvm/internal/FunctionReference;)Lh/i/f;
    .locals 1

    .line 4
    sget-object v0, Lh/f/b/k;->a:Lh/f/b/l;

    invoke-virtual {v0, p0}, Lh/f/b/l;->a(Lkotlin/jvm/internal/FunctionReference;)Lh/i/f;

    return-object p0
.end method

.method public static a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lh/i/g;
    .locals 1

    .line 6
    sget-object v0, Lh/f/b/k;->a:Lh/f/b/l;

    invoke-virtual {v0, p0}, Lh/f/b/l;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lh/i/g;

    return-object p0
.end method

.method public static a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;
    .locals 1

    .line 5
    sget-object v0, Lh/f/b/k;->a:Lh/f/b/l;

    invoke-virtual {v0, p0}, Lh/f/b/l;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    return-object p0
.end method

.method public static a(Lh/f/b/h;)Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lh/f/b/k;->a:Lh/f/b/l;

    invoke-virtual {v0, p0}, Lh/f/b/l;->a(Lh/f/b/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lh/f/b/k;->a:Lh/f/b/l;

    invoke-virtual {v0, p0}, Lh/f/b/l;->a(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
