<?php
class User{
	public string $idusu;
	public string $docusu;
	public string $nomusu;
	public string $logusu;
	public string $clausu;
	public string $nivusu;
	public string $idsuc;

	public function __construct(
		string $idusu,
		string $docusu,
		string $nomusu,
		string $logusu,
		string $clausu,
		string $nivusu,
		string $idsuc
	) {
		$this->idusu = $idusu;
		$this->docusu = $docusu;
		$this->nomusu = $nomusu;
		$this->logusu = $logusu;
		$this->clausu = $clausu;
		$this->nivusu = $nivusu;
		$this->idsuc = $idsuc;
	}

	public function getIdusu(): string
	{
		return $this->idusu;
	}

	public function getDocusu(): string
	{
		return $this->docusu;
	}

	public function getNomusu(): string
	{
		return $this->nomusu;
	}

	public function getLogusu(): string
	{
		return $this->logusu;
	}

	public function getClausu(): string
	{
		return $this->clausu;
	}

	public function getNivusu(): string
	{
		return $this->nivusu;
	}

	public function getIdsuc(): string
	{
		return $this->idsuc;
	}

	public function setIdusu(string $idusu): self
	{
		$this->idusu = $idusu;
		return $this;
	}

	public function setDocusu(string $docusu): self
	{
		$this->docusu = $docusu;
		return $this;
	}

	public function setNomusu(string $nomusu): self
	{
		$this->nomusu = $nomusu;
		return $this;
	}

	public function setLogusu(string $logusu): self
	{
		$this->logusu = $logusu;
		return $this;
	}

	public function setClausu(string $clausu): self
	{
		$this->clausu = $clausu;
		return $this;
	}

	public function setNivusu(string $nivusu): self
	{
		$this->nivusu = $nivusu;
		return $this;
	}

	public function setIdsuc(string $idsuc): self
	{
		$this->idsuc = $idsuc;
		return $this;
	}
	
}
