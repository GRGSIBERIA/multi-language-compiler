package flx;
class Hash
{
	var value: Array<Byte>;
}
class Signature
{
	var geometry_offset: DWord;
	var geometry_size: DWord;
	var downloader_sign: Hash;
	var server_sign: Hash;
	var block_chain: Array<Block>;
}
class Block
{
	var target_ip_address: DWord;
	var target_auth_key: Hash;
	var crypted_hash: Hash;
}
