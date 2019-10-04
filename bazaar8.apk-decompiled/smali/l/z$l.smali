.class public final Ll/z$l;
.super Ll/z;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll/z<",
        "Lj/G$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ll/z$l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll/z$l;

    invoke-direct {v0}, Ll/z$l;-><init>()V

    sput-object v0, Ll/z$l;->a:Ll/z$l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/B;Lj/G$b;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ll/B;->a(Lj/G$b;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ll/B;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lj/G$b;

    invoke-virtual {p0, p1, p2}, Ll/z$l;->a(Ll/B;Lj/G$b;)V

    return-void
.end method
