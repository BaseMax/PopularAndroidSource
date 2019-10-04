.class public Lf/a/a/d/a/a/b/a/a;
.super Lf/a/a/d/a/a/b/a/d;
.source "AddressInputFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;
    .locals 1

    .line 1
    new-instance p2, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;

    invoke-direct {p2}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;-><init>()V

    const-string v0, "type"

    .line 2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;->a(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;->ADDRESS:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    .line 4
    :cond_0
    invoke-virtual {p2, p1}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;)V

    return-object p2
.end method
