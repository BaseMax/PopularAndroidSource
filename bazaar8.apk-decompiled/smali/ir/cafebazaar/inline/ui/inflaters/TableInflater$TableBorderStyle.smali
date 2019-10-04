.class public final enum Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;
.super Ljava/lang/Enum;
.source "TableInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/TableInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TableBorderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

.field public static final enum none:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

.field public static final enum rect:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

.field public static final enum round:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    const/4 v1, 0x0

    const-string v2, "none"

    invoke-direct {v0, v2, v1}, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;->none:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    const/4 v2, 0x1

    const-string v3, "round"

    invoke-direct {v0, v3, v2}, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;->round:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    const/4 v3, 0x2

    const-string v4, "rect"

    invoke-direct {v0, v4, v3}, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;->rect:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    sget-object v4, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;->none:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    aput-object v4, v0, v1

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;->round:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    aput-object v1, v0, v2

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;->rect:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    aput-object v1, v0, v3

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;->a:[Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

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

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;->a:[Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    return-object v0
.end method
