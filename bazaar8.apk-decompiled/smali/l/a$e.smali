.class public final Ll/a$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/j<",
        "Lj/S;",
        "Lh/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ll/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll/a$e;

    invoke-direct {v0}, Ll/a$e;-><init>()V

    sput-object v0, Ll/a$e;->a:Ll/a$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj/S;)Lh/h;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lj/S;->close()V

    .line 3
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lj/S;

    invoke-virtual {p0, p1}, Ll/a$e;->a(Lj/S;)Lh/h;

    move-result-object p1

    return-object p1
.end method
