.class public final Ldagger/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/Lazy;
.implements Ldagger/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/Lazy<",
        "TT;>;",
        "Ldagger/a/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ldagger/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/a/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ldagger/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldagger/a/c;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ldagger/a/c;->a:Ldagger/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Ldagger/a/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Ldagger/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ldagger/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Ldagger/a/c;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ldagger/a/c;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createNullable(Ljava/lang/Object;)Ldagger/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ldagger/a/b<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1048
    sget-object p0, Ldagger/a/c;->a:Ldagger/a/c;

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Ldagger/a/c;

    invoke-direct {v0, p0}, Ldagger/a/c;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Ldagger/a/c;->b:Ljava/lang/Object;

    return-object v0
.end method
