.class public final Ll/a$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/j<",
        "Lj/S;",
        "Lj/S;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ll/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll/a$c;

    invoke-direct {v0}, Ll/a$c;-><init>()V

    sput-object v0, Ll/a$c;->a:Ll/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj/S;)Lj/S;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lj/S;

    invoke-virtual {p0, p1}, Ll/a$c;->a(Lj/S;)Lj/S;

    return-object p1
.end method
