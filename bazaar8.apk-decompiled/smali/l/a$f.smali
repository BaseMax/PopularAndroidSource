.class public final Ll/a$f;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Ll/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/j<",
        "Lj/S;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ll/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll/a$f;

    invoke-direct {v0}, Ll/a$f;-><init>()V

    sput-object v0, Ll/a$f;->a:Ll/a$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lj/S;

    invoke-virtual {p0, p1}, Ll/a$f;->a(Lj/S;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public a(Lj/S;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lj/S;->close()V

    const/4 p1, 0x0

    return-object p1
.end method
