.class public final Lh/g/a;
.super Ljava/lang/Object;
.source "Delegates.kt"


# static fields
.field public static final a:Lh/g/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh/g/a;

    invoke-direct {v0}, Lh/g/a;-><init>()V

    sput-object v0, Lh/g/a;->a:Lh/g/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lh/g/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lh/g/c<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lh/g/b;

    invoke-direct {v0}, Lh/g/b;-><init>()V

    return-object v0
.end method
