.class public final enum Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;
.super Ljava/lang/Enum;
.source "DividerInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/DividerInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

.field public static final enum empty:Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

.field public static final enum line:Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    const/4 v1, 0x0

    const-string v2, "line"

    invoke-direct {v0, v2, v1}, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;->line:Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    const/4 v2, 0x1

    const-string v3, "empty"

    invoke-direct {v0, v3, v2}, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;->empty:Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    sget-object v3, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;->line:Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    aput-object v3, v0, v1

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;->empty:Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    aput-object v1, v0, v2

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;->a:[Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;->a:[Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    return-object v0
.end method
