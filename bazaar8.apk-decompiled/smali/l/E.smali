.class public Ll/E;
.super Ljava/lang/Object;
.source "Retrofit.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/F;->a(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final a:Ll/A;

.field public final b:[Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Class;

.field public final synthetic d:Ll/F;


# direct methods
.method public constructor <init>(Ll/F;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/E;->d:Ll/F;

    iput-object p2, p0, Ll/E;->c:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ll/A;->e()Ll/A;

    move-result-object p1

    iput-object p1, p0, Ll/E;->a:Ll/A;

    const/4 p1, 0x0

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ll/E;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Ll/E;->a:Ll/A;

    invoke-virtual {v0, p2}, Ll/A;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ll/E;->a:Ll/A;

    iget-object v1, p0, Ll/E;->c:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1, p1, p3}, Ll/A;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object p1, p0, Ll/E;->d:Ll/F;

    invoke-virtual {p1, p2}, Ll/F;->a(Ljava/lang/reflect/Method;)Ll/G;

    move-result-object p1

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p0, Ll/E;->b:[Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1, p3}, Ll/G;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
